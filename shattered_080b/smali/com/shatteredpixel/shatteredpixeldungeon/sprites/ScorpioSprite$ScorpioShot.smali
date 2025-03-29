.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ScorpioSprite$ScorpioShot;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "ScorpioSprite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ScorpioSprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScorpioShot"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ScorpioSprite;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    .line 2
    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->FISHING_SPEAR:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method
