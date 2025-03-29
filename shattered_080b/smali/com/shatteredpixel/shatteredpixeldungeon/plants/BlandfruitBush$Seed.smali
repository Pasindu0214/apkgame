.class public Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush$Seed;
.super Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;
.source "BlandfruitBush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Seed"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SEED_FADELEAF:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 3
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/BlandfruitBush;

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;->plantClass:Ljava/lang/Class;

    return-void
.end method
