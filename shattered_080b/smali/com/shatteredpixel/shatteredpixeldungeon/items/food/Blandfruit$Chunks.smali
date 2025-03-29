.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit$Chunks;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;
.source "Blandfruit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Blandfruit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Chunks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->stackable:Z

    .line 3
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BLAND_CHUNKS:I

    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/high16 v1, 0x43e10000    # 450.0f

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/food/Food;->energy:F

    .line 5
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->bones:Z

    return-void
.end method
