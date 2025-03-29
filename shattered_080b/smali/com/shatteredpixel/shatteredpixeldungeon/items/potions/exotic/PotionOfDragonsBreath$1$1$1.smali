.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1$1;
.super Ljava/lang/Object;
.source "PotionOfDragonsBreath.java"

# interfaces
.implements Lcom/watabou/utils/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->call()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$2:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;

.field public final synthetic val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1$1;->this$2:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;

    iput-object p2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1$1;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1$1;->this$2:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1;->this$1:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;

    .line 2
    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath;->affectedCells:Ljava/util/HashSet;

    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/potions/exotic/PotionOfDragonsBreath$1$1$1;->val$bolt:Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/mechanics/Ballistica;->sourcePos:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    .line 5
    const-class v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Fire;

    invoke-static {v1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;->seed(IILjava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;

    move-result-object v2

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->add(Lcom/shatteredpixel/shatteredpixeldungeon/actors/blobs/Blob;)V

    .line 6
    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    invoke-static {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;

    move-result-object v0

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;

    const/high16 v2, 0x41000000    # 8.0f

    .line 8
    iput v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Burning;->left:F

    .line 9
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Cripple;

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v0, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/Buff;->affect(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;Ljava/lang/Class;F)Lcom/shatteredpixel/shatteredpixeldungeon/actors/buffs/FlavourBuff;

    :cond_2
    return-void
.end method
