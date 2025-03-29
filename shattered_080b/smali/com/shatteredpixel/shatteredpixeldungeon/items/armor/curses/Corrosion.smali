.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Corrosion;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor$Glyph;
.source "Corrosion.java"


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
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Corrosion;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/curses/Corrosion;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 4

    const/16 p1, 0xa

    .line 1
    invoke-static {p1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget p1, p3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 3
    sget-object p2, Lcom/watabou/utils/PathFinder;->NEIGHBOURS9:[I

    array-length p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget v2, p2, v1

    add-int/2addr v2, p1

    const/4 v3, 0x5

    .line 4
    invoke-static {v2, v0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(III)V

    .line 5
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 6
    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    invoke-static {v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v2

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;

    const/high16 v3, 0x41a00000    # 20.0f

    .line 7
    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Ooze;->left:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return p4
.end method
