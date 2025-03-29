.class public final Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;
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
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 8

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;

    const-class v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->collisionPos:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    const/4 v3, 0x2

    .line 2
    invoke-static {v3}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v3

    const/high16 v4, 0x40400000    # 3.0f

    const/high16 v5, 0x41000000    # 8.0f

    const/high16 v6, 0x40a00000    # 5.0f

    if-eqz v3, :cond_1

    const/4 v7, 0x1

    if-eq v3, v7, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {v3, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    .line 4
    iput v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    if-eqz v2, :cond_3

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;->duration()F

    invoke-static {v4, v6}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v1

    mul-float v1, v1, v6

    invoke-static {v2, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    invoke-static {v2, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    .line 7
    iput v5, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    .line 8
    :cond_2
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;->val$user:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Frost;->duration()F

    invoke-static {v4, v6}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v2

    mul-float v2, v2, v6

    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/CursedWand$1;->val$afterZap:Lcom/watabou/utils/Callback;

    invoke-interface {v0}, Lcom/watabou/utils/Callback;->call()V

    return-void
.end method
