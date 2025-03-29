.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/Javelin;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;
.source "Javelin.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;-><init>()V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->JAVELIN:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/MissileWeapon;->tier:I

    return-void
.end method
