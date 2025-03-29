.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "Dart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1;->onSelect(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

.field public final synthetic val$maxSeedsToUse:I

.field public final synthetic val$maxToTip:I

.field public final synthetic val$options:[Ljava/lang/String;

.field public final synthetic val$singleSeedDarts:I


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;III)V
    .locals 0

    .line 1
    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$options:[Ljava/lang/String;

    iput-object p6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    iput p7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$maxSeedsToUse:I

    iput p8, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$maxToTip:I

    iput p9, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$singleSeedDarts:I

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x3

    if-nez p1, :cond_3

    .line 1
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$options:[Ljava/lang/String;

    array-length v3, v3

    if-ne v3, v2, :cond_3

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 3
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 4
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$maxSeedsToUse:I

    if-gt v2, v3, :cond_0

    .line 5
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->access$200()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    move-result-object v2

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_0

    :cond_0
    sub-int/2addr v2, v3

    .line 6
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 7
    :goto_0
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$maxToTip:I

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->access$300()Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    move-result-object v2

    .line 8
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    if-ge p1, v2, :cond_1

    .line 9
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 10
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 11
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$maxToTip:I

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_1

    .line 12
    :cond_1
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 13
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 14
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 15
    :goto_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$maxToTip:I

    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->getTipped(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 17
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 18
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 19
    :cond_2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 20
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 21
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 22
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 23
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    goto :goto_3

    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_4

    .line 24
    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$options:[Ljava/lang/String;

    array-length v3, v3

    if-eq v3, v2, :cond_5

    :cond_4
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$options:[Ljava/lang/String;

    array-length p1, p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    .line 25
    :cond_5
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;->access$1300()Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    move-result-object v2

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 26
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curItem:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 27
    iget v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 28
    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$singleSeedDarts:I

    if-gt v2, v3, :cond_6

    .line 29
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 30
    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v3

    .line 31
    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity(I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 32
    :goto_2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$item:Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart$1$1;->val$singleSeedDarts:I

    invoke-static {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->getTipped(Lcom/shatteredpixel/shatteredpixeldungeon/plants/Plant$Seed;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    move-result-object p1

    .line 33
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    .line 34
    sget-object v3, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 35
    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v2, p1, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 36
    :cond_7
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 37
    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 38
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->curUser:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 39
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 40
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    :cond_8
    :goto_3
    return-void
.end method
