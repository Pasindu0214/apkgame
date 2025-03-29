.class public Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed$PlaceHolder;
.super Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;
.source "Plant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceHolder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SEED_HOLDER:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public info()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public isSimilar(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    return p1
.end method
