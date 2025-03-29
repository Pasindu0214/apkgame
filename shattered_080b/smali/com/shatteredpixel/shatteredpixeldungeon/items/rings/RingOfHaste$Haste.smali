.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfHaste$Haste;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
.source "RingOfHaste.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfHaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Haste"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfHaste;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;)V

    return-void
.end method
