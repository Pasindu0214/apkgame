.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$BagTab;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;
.source "WndBag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BagTab"
.end annotation


# instance fields
.field public bag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag;Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)V
    .locals 1

    if-eqz p1, :cond_4

    .line 1
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/VelvetPouch;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SEED_POUCH:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/ScrollHolder;

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->SCROLL_HOLDER:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/MagicalHolster;

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->WAND_HOLSTER:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p2, Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/PotionBandolier;

    if-eqz v0, :cond_3

    .line 8
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->POTION_BANDOLIER:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->BACKPACK:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    .line 10
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$IconTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;Lcom/watabou/noosa/Image;)V

    .line 11
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndBag$BagTab;->bag:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 12
    throw p1
.end method
