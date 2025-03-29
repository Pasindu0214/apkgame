.class public Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "Combo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;->getIcon()Lcom/watabou/noosa/Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Combo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    sget p1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->WEAPON_HOLDER:I

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->image:I

    return-void
.end method
