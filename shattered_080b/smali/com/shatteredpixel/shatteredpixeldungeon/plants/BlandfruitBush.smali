.class public Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush;
.super Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;
.source "BlandfruitBush.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;-><init>()V

    const/16 v0, 0xc

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->image:I

    return-void
.end method


# virtual methods
.method public activate(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;-><init>()V

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant;->pos:I

    invoke-virtual {p1, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    return-void
.end method
