.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;
.super Ljava/lang/Object;
.source "EtherealChains.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# instance fields
.field public final synthetic val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

.field public final synthetic val$pulledPos:I


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains;Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;ILcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iput p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$pulledPos:I

    iput-object p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 1
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;

    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$pulledPos:I

    new-instance v4, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2$1;

    invoke-direct {v4, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Pushing;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;IILcom/watabou/utils/Callback;)V

    .line 2
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->now:F

    invoke-static {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;F)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$pulledPos:I

    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->observe()V

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->updateFog()V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/EtherealChains$2;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spendAndNext(F)V

    return-void
.end method
