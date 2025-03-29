.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/StoneOfBlast;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;
.source "StoneOfBlast.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/stones/Runestone;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->STONE_BLAST:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public activate(I)V
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    return-void
.end method
