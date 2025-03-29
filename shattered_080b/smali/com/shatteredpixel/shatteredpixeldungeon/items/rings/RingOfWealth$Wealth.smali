.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;
.super Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;
.source "RingOfWealth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Wealth"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth$Wealth;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/RingOfWealth;

    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring$RingBuff;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/rings/Ring;)V

    return-void
.end method
