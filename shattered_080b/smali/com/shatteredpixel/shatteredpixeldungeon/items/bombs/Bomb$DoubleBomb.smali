.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb$DoubleBomb;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.source "Bomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DoubleBomb"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->DBL_BOMB:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    return-void
.end method


# virtual methods
.method public doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    const/4 v1, 0x2

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 3
    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, La/b/a/e;->language()Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    move-result-object v0

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;->ENGLISH:Lcom/shatteredpixel/shatteredpixeldungeon/messages/Languages;

    if-ne v0, v2, :cond_0

    .line 5
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    const v0, 0xffff00

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "1+1 free!"

    invoke-virtual {p1, v0, v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->showStatus(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
