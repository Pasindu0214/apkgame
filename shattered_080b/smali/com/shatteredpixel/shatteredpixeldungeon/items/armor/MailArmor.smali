.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/MailArmor;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;
.source "MailArmor.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/armor/Armor;-><init>(I)V

    .line 2
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->ARMOR_MAIL:I

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method
