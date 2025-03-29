.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;
.source "Fragile.java"


# static fields
.field public static BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;


# instance fields
.field public hits:I


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
    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon$Enchantment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;->hits:I

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
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;->BLACK:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite$Glowing;

    return-object v0
.end method

.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/Weapon;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 0

    int-to-float p1, p4

    .line 1
    iget p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;->hits:I

    int-to-float p3, p2

    const p4, 0x3ba3d70a    # 0.005f

    mul-float p3, p3, p4

    const/high16 p4, 0x3f800000    # 1.0f

    sub-float/2addr p4, p3

    mul-float p4, p4, p1

    float-to-int p1, p4

    const/16 p3, 0x96

    if-ge p2, p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 2
    iput p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;->hits:I

    :cond_0
    return p1
.end method

.method public restoreFromBundle(Lcom/watabou/utils/Bundle;)V
    .locals 1

    const-string v0, "hits"

    .line 1
    invoke-virtual {p1, v0}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;->hits:I

    return-void
.end method

.method public storeInBundle(Lcom/watabou/utils/Bundle;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/curses/Fragile;->hits:I

    const-string v1, "hits"

    invoke-virtual {p1, v1, v0}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    return-void
.end method
