.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;
.super Ljava/lang/Object;
.source "Wand.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;->onSelect(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$curWand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

.field public final synthetic val$shot:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1;Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;->val$curWand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;->val$shot:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;->val$curWand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;->val$shot:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->onZap(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand$1$2;->val$curWand:Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/Wand;->wandUsed()V

    return-void
.end method
