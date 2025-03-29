.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;
.source "SleepDart.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->SLEEP_DART:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method


# virtual methods
.method public proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I
    .locals 1

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart$1;

    invoke-direct {v0, p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/SleepDart;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    invoke-virtual {v0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->attachTo(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)Z

    .line 3
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->proc(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;I)I

    move-result p1

    return p1
.end method
