.class public final Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot$5;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;
.source "ItemSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/ItemSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;-><init>()V

    return-void
.end method


# virtual methods
.method public image()I
    .locals 1

    .line 1
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSpriteSheet;->BONES:I

    return v0
.end method
