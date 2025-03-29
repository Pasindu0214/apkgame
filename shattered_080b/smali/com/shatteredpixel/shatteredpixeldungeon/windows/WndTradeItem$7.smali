.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;
.super Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;
.source "WndTradeItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

.field public final synthetic val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

.field public final synthetic val$price:I

.field public final synthetic val$thievery:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;ILcom/shatteredpixel/shatteredpixeldungeon/items/Heap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    iput-object p3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->val$thievery:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;

    iput p4, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->val$price:I

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-direct {p0, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/RedButton;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->val$thievery:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->val$price:I

    .line 2
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    const/4 v4, 0x0

    if-gt v1, v3, :cond_0

    sub-int/2addr v3, v1

    .line 3
    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 4
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;->exp:I

    add-int/2addr v3, v1

    .line 5
    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;->exp:I

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->stealChance(I)F

    move-result v2

    .line 7
    invoke-static {}, Lcom/watabou/utils/Random;->Float()F

    move-result v3

    cmpl-float v3, v3, v2

    if-lez v3, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 8
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    iput v4, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    goto :goto_0

    .line 9
    :cond_2
    iget-object v3, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    iget v5, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    int-to-float v5, v5

    div-float v2, v5, v2

    sub-float/2addr v5, v2

    float-to-int v2, v5

    iput v2, v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->charge:I

    .line 10
    :goto_0
    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    .line 11
    iget v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;->exp:I

    add-int/2addr v3, v1

    .line 12
    iput v3, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;->exp:I

    .line 13
    :goto_1
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband$Thievery;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;

    .line 14
    iget v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;->exp:I

    .line 15
    iget v3, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->level:I

    mul-int/lit8 v5, v3, 0x32

    add-int/lit16 v5, v5, 0xfa

    if-lt v2, v5, :cond_3

    .line 16
    iget v6, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/Artifact;->levelCap:I

    if-ge v3, v6, :cond_3

    sub-int/2addr v2, v5

    .line 17
    iput v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/items/artifacts/MasterThievesArmband;->exp:I

    .line 18
    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->upgrade()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_4

    .line 19
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 20
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pickUp()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-virtual {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->hide()V

    .line 22
    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->doPickUp(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 23
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->val$heap:Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->pos:I

    invoke-virtual {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object v0

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    goto :goto_3

    .line 24
    :cond_4
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->mobs:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;

    .line 25
    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;

    if-eqz v2, :cond_5

    new-array v0, v4, [Ljava/lang/Object;

    const-string v2, "thief"

    .line 26
    invoke-static {v1, v2, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->yell(Ljava/lang/String;)V

    .line 27
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;

    invoke-virtual {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Shopkeeper;->flee()V

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem$7;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTradeItem;->hide()V

    :cond_7
    :goto_3
    return-void
.end method
