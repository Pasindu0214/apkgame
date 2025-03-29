.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;
.super Ljava/lang/Object;
.source "EtherealChains.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

.field public final synthetic val$newHeroPos:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;I)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$newHeroPos:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$newHeroPos:I

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3$1;

    invoke-direct {v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;IILcom/watabou/utils/Callback;)V

    .line 2
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$3;->val$newHeroPos:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 6
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    return-void
.end method
