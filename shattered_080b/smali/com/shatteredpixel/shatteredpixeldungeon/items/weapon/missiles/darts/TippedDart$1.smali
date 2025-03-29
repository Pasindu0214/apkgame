.class public Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "TippedDart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;->execute(Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

.field public final synthetic val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;


# direct methods
.method public varargs constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    iput-object p5, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-direct {p0, p2, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 4

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detachAll(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 2
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;-><init>()V

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    .line 3
    iget v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 4
    iput v2, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->quantity:I

    .line 5
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 7
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 8
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 9
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 10
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->this$0:Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart;

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->belongings:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Belongings;->backpack:Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;

    invoke-virtual {p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->detach(Lcom/shatteredpixel/shatteredpixeldungeon/items/bags/Bag;)Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;

    .line 11
    new-instance p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    invoke-direct {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;-><init>()V

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;->collect()Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/Dungeon;->level:Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;

    invoke-direct {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/Dart;-><init>()V

    iget-object v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    iget v3, v3, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p1, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/levels/Level;->drop(Lcom/shatteredpixel/shatteredpixeldungeon/items/Item;I)Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/Heap;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ItemSprite;->drop()V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    invoke-virtual {p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->spend(F)V

    .line 13
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/items/weapon/missiles/darts/TippedDart$1;->val$hero:Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;

    .line 14
    iput-boolean v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/hero/Hero;->ready:Z

    .line 15
    iget-object v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->operate(I)V

    :cond_2
    :goto_0
    return-void
.end method
