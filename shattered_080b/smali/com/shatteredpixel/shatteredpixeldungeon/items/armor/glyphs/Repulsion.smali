.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Repulsion;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.source "Repulsion.java"


# static fields
.field public static WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0xffffff

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Repulsion;->WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Repulsion;->WHITE:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;->buffedLvl()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    .line 2
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_0

    .line 3
    iget p1, p2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget p3, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    sub-int p3, p1, p3

    add-int/2addr p3, p1

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    const/4 v1, 0x6

    invoke-direct {v0, p1, p3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;-><init>(III)V

    const/4 p1, 0x2

    const/4 p3, 0x1

    .line 5
    invoke-static {p2, v0, p1, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfBlastWave;->throwChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;IZ)V

    :cond_0
    return p4
.end method
