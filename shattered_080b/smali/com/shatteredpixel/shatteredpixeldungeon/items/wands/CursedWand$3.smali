.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;
.super Ljava/lang/Object;
.source "CursedWand.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$afterZap:Lcom/watabou/utils/Callback;

.field public final synthetic val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

.field public final synthetic val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Lcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->properties()Ljava/util/HashSet;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;->IMMOVABLE:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char$Property;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/scrolls/ScrollOfTeleportation;->teleportChar(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$3;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method
