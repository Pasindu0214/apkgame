.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$7;
.super Ljava/lang/Object;
.source "CursedWand.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$afterZap:Lcom/watabou/utils/Callback;

.field public final synthetic val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$7;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$7;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;

    invoke-direct {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;-><init>()V

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$7;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget-object v1, v1, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/bombs/Bomb;->explode(I)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$7;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method
