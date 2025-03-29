.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.source "Stone.java"


# static fields
.field public static GREY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# instance fields
.field public testing:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x222222

    .line 2
    invoke-direct {v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;-><init>(IF)V

    .line 3
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;->GREY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;->testing:Z

    return-void
.end method


# virtual methods
.method public glowing()Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;
    .locals 1

    .line 1
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;->GREY:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 2

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;->testing:Z

    .line 2
    invoke-virtual {p3, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->defenseSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p1

    int-to-float p1, p1

    .line 3
    invoke-virtual {p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->attackSkill(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)I

    move-result p2

    int-to-float p2, p2

    const/4 p3, 0x0

    .line 4
    iput-boolean p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/glyphs/Stone;->testing:Z

    const/high16 p3, 0x40000000    # 2.0f

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, p2

    if-ltz v1, :cond_0

    div-float/2addr p2, p1

    div-float/2addr p2, p3

    goto :goto_0

    :cond_0
    div-float/2addr p1, p2

    div-float/2addr p1, p3

    sub-float p2, v0, p1

    :goto_0
    const/high16 p1, 0x40400000    # 3.0f

    mul-float p2, p2, p1

    add-float/2addr p2, v0

    const/high16 p1, 0x40800000    # 4.0f

    div-float/2addr p2, p1

    int-to-float p1, p4

    mul-float p1, p1, p2

    float-to-double p1, p1

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    return p1
.end method
