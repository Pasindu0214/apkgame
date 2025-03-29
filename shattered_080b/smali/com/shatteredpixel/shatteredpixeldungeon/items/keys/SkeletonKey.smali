.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;
.source "SkeletonKey.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/SkeletonKey;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;-><init>()V

    .line 3
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SKELETON_KEY:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    .line 4
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/keys/Key;->depth:I

    return-void
.end method
